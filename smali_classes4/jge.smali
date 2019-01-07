.class public final Ljge;
.super Ljava/lang/Object;
.source "GLHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(ILjava/lang/String;)I
    .locals 5
    .param p0, "shaderType"    # I
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 231
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 232
    .local v1, "shader":I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "glCreateShader type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljge;->a(Ljava/lang/String;)V

    .line 233
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 234
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 235
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 236
    .local v0, "compiled":[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v4}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 237
    aget v2, v0, v4

    if-nez v2, :cond_0

    .line 238
    const-string/jumbo v2, "GLHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Could not compile shader "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const-string/jumbo v2, "GLHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, " "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 241
    const/4 v1, 0x0

    .line 243
    :cond_0
    return v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p0, "vss"    # Ljava/lang/String;
    .param p1, "fss"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 194
    const v5, 0x8b31

    invoke-static {v5, p0}, Ljge;->a(ILjava/lang/String;)I

    move-result v3

    .line 195
    .local v3, "vs":I
    if-nez v3, :cond_1

    move v2, v4

    .line 222
    :cond_0
    :goto_0
    return v2

    .line 199
    :cond_1
    const v5, 0x8b30

    invoke-static {v5, p1}, Ljge;->a(ILjava/lang/String;)I

    move-result v0

    .line 200
    .local v0, "fs":I
    if-nez v0, :cond_2

    move v2, v4

    .line 201
    goto :goto_0

    .line 204
    :cond_2
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 205
    .local v2, "program":I
    const-string/jumbo v5, "glCreateProgram"

    invoke-static {v5}, Ljge;->a(Ljava/lang/String;)V

    .line 206
    if-nez v2, :cond_3

    .line 207
    const-string/jumbo v5, "GLHelper"

    const-string/jumbo v6, "Could not create program"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_3
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 210
    const-string/jumbo v5, "glAttachShader"

    invoke-static {v5}, Ljge;->a(Ljava/lang/String;)V

    .line 211
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 212
    const-string/jumbo v5, "glAttachShader"

    invoke-static {v5}, Ljge;->a(Ljava/lang/String;)V

    .line 213
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 214
    new-array v1, v7, [I

    .line 215
    .local v1, "linkStatus":[I
    const v5, 0x8b82

    invoke-static {v2, v5, v1, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 216
    aget v5, v1, v4

    if-eq v5, v7, :cond_0

    .line 217
    const-string/jumbo v5, "GLHelper"

    const-string/jumbo v6, "Could not link program: "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const-string/jumbo v5, "GLHelper"

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    move v2, v4

    .line 220
    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 4
    .param p0, "op"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .line 50
    .local v0, "error":I
    if-eqz v0, :cond_0

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": glError 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "msg":Ljava/lang/String;
    const-string/jumbo v2, "GLHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method
