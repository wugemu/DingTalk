.class final Ldav$2;
.super Ljava/lang/Object;
.source "AbsResumeAuthViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldav;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/base/model/ResumeAuthDo;

.field final synthetic b:Lcom/alibaba/wukong/im/Message;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Ldav;


# direct methods
.method constructor <init>(Ldav;Lcom/alibaba/android/dingtalkim/base/model/ResumeAuthDo;Lcom/alibaba/wukong/im/Message;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Ldav;

    .prologue
    .line 77
    iput-object p1, p0, Ldav$2;->d:Ldav;

    iput-object p2, p0, Ldav$2;->a:Lcom/alibaba/android/dingtalkim/base/model/ResumeAuthDo;

    iput-object p3, p0, Ldav$2;->b:Lcom/alibaba/wukong/im/Message;

    iput-object p4, p0, Ldav$2;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 80
    iget-object v1, p0, Ldav$2;->a:Lcom/alibaba/android/dingtalkim/base/model/ResumeAuthDo;

    invoke-static {v1}, Ldun;->a(Lcom/alibaba/android/dingtalkim/base/model/ResumeAuthDo;)Ldun;

    move-result-object v0

    .line 81
    .local v0, "model":Ldun;
    if-eqz v0, :cond_0

    .line 82
    iget-object v1, p0, Ldav$2;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Ldun;->f:Ljava/lang/Long;

    .line 83
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Ldun;->e:Ljava/lang/Boolean;

    .line 86
    :cond_0
    invoke-static {}, Ldym;->a()Ldyl;

    move-result-object v2

    new-instance v1, Ldav$2$1;

    invoke-direct {v1, p0}, Ldav$2$1;-><init>(Ldav$2;)V

    const-class v3, Lcma;

    iget-object v4, p0, Ldav$2;->c:Landroid/app/Activity;

    invoke-static {v1, v3, v4}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    invoke-interface {v2, v0, v1}, Ldyl;->a(Ldun;Lcma;)V

    .line 101
    return-void
.end method
