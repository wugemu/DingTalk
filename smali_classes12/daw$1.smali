.class final Ldaw$1;
.super Ljava/lang/Object;
.source "AbsResumeCardViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldaw;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/base/model/ResumeCardDo;

.field final synthetic b:Ldaw;


# direct methods
.method constructor <init>(Ldaw;Lcom/alibaba/android/dingtalkim/base/model/ResumeCardDo;)V
    .locals 0
    .param p1, "this$0"    # Ldaw;

    .prologue
    .line 115
    iput-object p1, p0, Ldaw$1;->b:Ldaw;

    iput-object p2, p0, Ldaw$1;->a:Lcom/alibaba/android/dingtalkim/base/model/ResumeCardDo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 118
    iget-object v0, p0, Ldaw$1;->b:Ldaw;

    iget-object v1, p0, Ldaw$1;->a:Lcom/alibaba/android/dingtalkim/base/model/ResumeCardDo;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/ResumeCardDo;->resumeLink:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ldaw;->a(Ljava/lang/String;)V

    .line 119
    return-void
.end method
