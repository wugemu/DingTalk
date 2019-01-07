.class final Ldps$1;
.super Ljava/lang/Object;
.source "CustomEmotionMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldra;

.field final synthetic b:Lcma;

.field final synthetic c:Ldps;


# direct methods
.method constructor <init>(Ldps;Ldra;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Ldps;

    .prologue
    .line 176
    iput-object p1, p0, Ldps$1;->c:Ldps;

    iput-object p2, p0, Ldps$1;->a:Ldra;

    iput-object p3, p0, Ldps$1;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 179
    iget-object v0, p0, Ldps$1;->c:Ldps;

    iget-object v1, p0, Ldps$1;->a:Ldra;

    iget-object v1, v1, Ldra;->a:Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    invoke-static {v0, v1}, Ldps;->a(Ldps;Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Ldps$1;->c:Ldps;

    invoke-static {v0}, Ldps;->a(Ldps;)V

    .line 183
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Ldps$1$1;

    invoke-direct {v1, p0}, Ldps$1$1;-><init>(Ldps$1;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 202
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Ldps$1$2;

    invoke-direct {v1, p0}, Ldps$1$2;-><init>(Ldps$1;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
