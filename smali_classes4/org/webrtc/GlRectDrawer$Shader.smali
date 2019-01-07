.class Lorg/webrtc/GlRectDrawer$Shader;
.super Ljava/lang/Object;
.source "GlRectDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/GlRectDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Shader"
.end annotation


# instance fields
.field public final glShader:Lorg/webrtc/GlShader;

.field public final texMatrixLocation:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "fragmentShader"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Lorg/webrtc/GlShader;

    const-string/jumbo v1, "varying vec2 interp_tc;\nattribute vec4 in_pos;\nattribute vec4 in_tc;\n\nuniform mat4 texMatrix;\n\nvoid main() {\n    gl_Position = in_pos;\n    interp_tc = (texMatrix * in_tc).xy;\n}\n"

    invoke-direct {v0, v1, p1}, Lorg/webrtc/GlShader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/webrtc/GlRectDrawer$Shader;->glShader:Lorg/webrtc/GlShader;

    .line 108
    iget-object v0, p0, Lorg/webrtc/GlRectDrawer$Shader;->glShader:Lorg/webrtc/GlShader;

    const-string/jumbo v1, "texMatrix"

    invoke-virtual {v0, v1}, Lorg/webrtc/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/webrtc/GlRectDrawer$Shader;->texMatrixLocation:I

    .line 109
    return-void
.end method
