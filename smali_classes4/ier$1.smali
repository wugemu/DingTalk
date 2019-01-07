.class final Lier$1;
.super Ljava/lang/Object;
.source "AVAudioService.java"

# interfaces
.implements Life$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lier;


# direct methods
.method constructor <init>(Lier;)V
    .locals 0
    .param p1, "this$0"    # Lier;

    .prologue
    .line 33
    iput-object p1, p0, Lier$1;->a:Lier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "openId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 37
    const-string/jumbo v0, "-AVSession create."

    .line 1016
    const-string/jumbo v1, "OpenAV"

    invoke-static {v1, v0}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lier$1;->a:Lier;

    invoke-virtual {v0, p1}, Lier;->a(Ljava/lang/String;)Lcom/alibaba/wukong/openav/external/IAVSession;

    goto :goto_0
.end method
