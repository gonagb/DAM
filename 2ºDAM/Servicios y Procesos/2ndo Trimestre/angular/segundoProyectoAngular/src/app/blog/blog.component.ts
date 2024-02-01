import { Component } from '@angular/core';

@Component({
  selector: 'app-blog',
  templateUrl: './blog.component.html',
  styleUrl: './blog.component.css'
})
export class BlogComponent {
  numeroarticulos: number = 9;
  articulos = Array(this.numeroarticulos).fill(0)
}
