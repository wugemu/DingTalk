.class public Lorg/webrtc/ali/GlShader;
.super Ljava/lang/Object;
.source "GlShader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GlShader"


# instance fields
.field private program:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "vertexSource"    # Ljava/lang/String;
    .param p2, "fragmentSource"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const v3, 0x8b31

    invoke-static {v3, p1}, Lorg/webrtc/ali/GlShader;->compileShader(ILjava/lang/String;)I

    move-result v2

    .line 43
    .local v2, "vertexShader":I
    const v3, 0x8b30

    invoke-static {v3, p2}, Lorg/webrtc/ali/GlShader;->compileShader(ILjava/lang/String;)I

    move-result v0

    .line 44
    .local v0, "fragmentShader":I
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v3

    iput v3, p0, Lorg/webrtc/ali/GlShader;->program:I

    .line 45
    iget v3, p0, Lorg/webrtc/ali/GlShader;->program:I

    if-nez v3, :cond_0

    .line 46
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "glCreateProgram() failed. GLES20 error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 48
    :cond_0
    iget v3, p0, Lorg/webrtc/ali/GlShader;->program:I

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 49
    iget v3, p0, Lorg/webrtc/ali/GlShader;->program:I

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 50
    iget v3, p0, Lorg/webrtc/ali/GlShader;->program:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 51
    new-array v1, v6, [I

    aput v5, v1, v5

    .line 52
    .local v1, "linkStatus":[I
    iget v3, p0, Lorg/webrtc/ali/GlShader;->program:I

    const v4, 0x8b82

    invoke-static {v3, v4, v1, v5}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 53
    aget v3, v1, v5

    if-eq v3, v6, :cond_1

    .line 54
    const-string/jumbo v3, "GlShader"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Could not link program: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lorg/webrtc/ali/GlShader;->program:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance v3, Ljava/lang/RuntimeException;

    iget v4, p0, Lorg/webrtc/ali/GlShader;->program:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 64
    :cond_1
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 65
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 66
    const-string/jumbo v3, "Creating GlShader"

    invoke-static {v3}, Lorg/webrtc/ali/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method private static compileShader(ILjava/lang/String;)I
    .locals 5
    .param p0, "shaderType"    # I
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 23
    .local v1, "shader":I
    if-nez v1, :cond_0

    .line 24
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "glCreateShader() failed. GLES20 error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 26
    :cond_0
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 27
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 28
    new-array v0, v4, [I

    aput v3, v0, v3

    .line 29
    .local v0, "compileStatus":[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 30
    aget v2, v0, v3

    if-eq v2, v4, :cond_1

    .line 31
    const-string/jumbo v2, "GlShader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Could not compile shader "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 32
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 31
    invoke-static {v2, v3}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 35
    :cond_1
    const-string/jumbo v2, "compileShader"

    invoke-static {v2}, Lorg/webrtc/ali/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 36
    return v1
.end method


# virtual methods
.method public getAttribLocation(Ljava/lang/String;)I
    .locals 4
    .param p1, "label"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 70
    iget v1, p0, Lorg/webrtc/ali/GlShader;->program:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 71
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "The program has been released"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_0
    iget v1, p0, Lorg/webrtc/ali/GlShader;->program:I

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    .line 74
    .local v0, "location":I
    if-gez v0, :cond_1

    .line 75
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Could not locate \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' in program"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    :cond_1
    return v0
.end method

.method public getUniformLocation(Ljava/lang/String;)I
    .locals 4
    .param p1, "label"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 95
    iget v1, p0, Lorg/webrtc/ali/GlShader;->program:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 96
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "The program has been released"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    :cond_0
    iget v1, p0, Lorg/webrtc/ali/GlShader;->program:I

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 99
    .local v0, "location":I
    if-gez v0, :cond_1

    .line 100
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Could not locate uniform \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' in program"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_1
    return v0
.end method

.method public release()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, -0x1

    .line 114
    const-string/jumbo v0, "GlShader"

    const-string/jumbo v1, "Deleting shader."

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget v0, p0, Lorg/webrtc/ali/GlShader;->program:I

    if-eq v0, v2, :cond_0

    .line 117
    iget v0, p0, Lorg/webrtc/ali/GlShader;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 118
    iput v2, p0, Lorg/webrtc/ali/GlShader;->program:I

    .line 120
    :cond_0
    return-void
.end method

.method public setVertexAttribArray(Ljava/lang/String;ILjava/nio/FloatBuffer;)V
    .locals 6
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "dimension"    # I
    .param p3, "buffer"    # Ljava/nio/FloatBuffer;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 85
    iget v1, p0, Lorg/webrtc/ali/GlShader;->program:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 86
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "The program has been released"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    :cond_0
    invoke-virtual {p0, p1}, Lorg/webrtc/ali/GlShader;->getAttribLocation(Ljava/lang/String;)I

    move-result v0

    .line 89
    .local v0, "location":I
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 90
    const/16 v2, 0x1406

    move v1, p2

    move v4, v3

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 91
    const-string/jumbo v1, "setVertexAttribArray"

    invoke-static {v1}, Lorg/webrtc/ali/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public useProgram()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 106
    iget v0, p0, Lorg/webrtc/ali/GlShader;->program:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 107
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "The program has been released"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    iget v0, p0, Lorg/webrtc/ali/GlShader;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 110
    const-string/jumbo v0, "glUseProgram"

    invoke-static {v0}, Lorg/webrtc/ali/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 111
    return-void
.end method
