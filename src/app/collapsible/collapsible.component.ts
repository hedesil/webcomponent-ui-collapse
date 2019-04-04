import {Component, Input, OnInit} from '@angular/core';

@Component({
  selector: 'app-collapsible',
  templateUrl: './collapsible.component.html',
  styleUrls: ['./collapsible.component.css']
})

export class CollapsibleComponent implements OnInit {
  @Input() public name: string;
  @Input() public content: string;
  @Input() public isCollapsed: string;

  constructor() {
  }

  ngOnInit() {
    this.defaultValues(this.name, this.content);
  }

  public toggleCollapse(event) {
    const element = event.target;
    element.classList.toggle('active');
    const panel = element.nextElementSibling;
    if (panel.style.maxHeight) {
      panel.style.maxHeight = null;
    } else {
      panel.style.maxHeight = panel.scrollHeight + 'px';
    }
  }

  private defaultValues(name: string, content: string) {
    if (name === undefined) {
      this.name = 'Titulo por defecto';
    }
    if (content === undefined) {
      this.content = 'Aqui va el contenido por defecto';
    }
  }

}
