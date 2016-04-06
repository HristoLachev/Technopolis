<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<div class="input-group">
					<div class="input-group-btn search-panel">
						<button type="button" class="btn btn-default dropdown-toggle"
							data-toggle="dropdown">
							<span id="search_concept">КАТЕГОРИИ</span> <span class="caret"></span>
						</button>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#"><img alt="TV I VIDEO"
									src="images/main/tv.png">TV И ВИДЕО</a></li>
							<li><a href="#"><img alt="gsm" src="images/main/gsm.png">GSM
									И ТАБЛЕТИ</a></li>
							<li><a href="#"><img alt="video"
									src="images/main/video.png">ФОТО И ВИДЕО</a></li>
							<li><a href="#"><img alt="avto"
									src="images/main/auto.png">АВТО И GPS</a></li>
							<li><a href="#"><img alt="comp"
									src="images/main/computer.png">КОМПЮТРИ И ПЕРИФЕРИЯ</a></li>
							<li><a href="#"><img alt="mouse"
									src="images/main/mouse.png">КОМПЮТЪРНИ АКСЕСОАРИ</a></li>
							<li><a href="#"><img alt="game"
									src="images/main/game.png">ИГРИ И ЗАБАВАЛНЕНИЯ</a></li>
							<li><a href="#"><img alt="audio"
									src="images/main/audio.png">АУДИО</a></li>
							<li><a href="#"><img alt="el-uredi"
									src="images/main/el-uredi.png">МАЛКИ ЕЛЕКТРОУРЕДИ</a></li>
							<li><a href="#"><img alt="air" src="images/main/air.png">КЛИМАТИЦИ
									И ОТОПЛИТЕЛИ></a></li>
							<li><a href="#"><img alt="small"
									src="images/main/small.png">ДОМАКИНСКИ ЕЛЕКТРОУРЕДИ</a></li>
							<li class="divider"></li>
							<li><a href="#all"><img alt="all"
									src="images/main/all.png">ИЗБЕРИ ВСИЧКО</a></li>
						</ul>
					</div>
					<input type="hidden" name="search_param" value="all"
						id="search_param"> <input type="text" class="form-control"
						name="x" placeholder="Search term..."> <span
						class="input-group-btn">
						<button class="btn btn-default" type="button">
							<span class="glyphicon glyphicon-search"></span>
						</button>
					</span>
				</div>
			</div>
		</div>
	</div>
