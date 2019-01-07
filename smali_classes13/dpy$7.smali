.class final Ldpy$7;
.super Ljava/lang/Object;
.source "ImEmotionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldpy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

.field final synthetic b:Ldpy;


# direct methods
.method constructor <init>(Ldpy;Lcom/alibaba/android/dingtalkim/models/TopicResultObject;)V
    .locals 0
    .param p1, "this$0"    # Ldpy;

    .prologue
    .line 236
    iput-object p1, p0, Ldpy$7;->b:Ldpy;

    iput-object p2, p0, Ldpy$7;->a:Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

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
    .line 239
    iget-object v0, p0, Ldpy$7;->b:Ldpy;

    iget-object v1, p0, Ldpy$7;->a:Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

    .line 1046
    iput-object v1, v0, Ldpy;->f:Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

    .line 240
    iget-object v0, p0, Ldpy$7;->b:Ldpy;

    invoke-static {v0}, Ldpy;->a(Ldpy;)V

    .line 241
    return-void
.end method
