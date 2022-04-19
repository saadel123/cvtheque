<div class="form-group" has-error>
    <label for="">Titre:</label>
    <input type="text" name="titre" value="{{ old('titre',$cv->titre ?? null) }}" class="form-control 
                @if ($errors->get('titre')) is-invalid @endif">
    @if ($errors->get('titre'))
        @foreach ($errors->get('titre') as $msg)
            <span style="color: red">{{ $msg }}</span>
        @endforeach
    @endif
</div>
<div class="form-group">
    <label for="">Presentation:</label>
    <textarea name="presentation" cols="10" rows="6" class="form-control @if ($errors->get('presentation')) is-invalid @endif">{{ old('presentation',$cv->presentation ?? null) }}</textarea>
    @if ($errors->get('presentation'))
        @foreach ($errors->get('presentation') as $msg)
            <span style="color: red">{{ $msg }}</span>
        @endforeach
    @endif
</div>
<div class="form-group">
    <label for="">Image:</label>
    <input type="file" class="form-control bg-white" name="pic" value="{{old('pic',$cv->pic ?? null)}}">
    @if ($errors->get('pic'))
        @foreach ($errors->get('pic') as $msg)
            <span style="color: red">{{ $msg }}</span>
        @endforeach
    @endif
</div>