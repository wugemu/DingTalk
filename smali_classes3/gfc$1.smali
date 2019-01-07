.class final Lgfc$1;
.super Ljava/lang/Object;
.source "MemberViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgfc;->a(Landroid/content/Context;Lgfd$a;Lgfd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lgfd$a;

.field final synthetic c:Lgfd;

.field final synthetic d:Lcom/alibaba/dingtalk/cspace/functions/members/Member;

.field final synthetic e:Lgfc;


# direct methods
.method constructor <init>(Lgfc;ZLgfd$a;Lgfd;Lcom/alibaba/dingtalk/cspace/functions/members/Member;)V
    .locals 0
    .param p1, "this$0"    # Lgfc;

    .prologue
    .line 97
    iput-object p1, p0, Lgfc$1;->e:Lgfc;

    iput-boolean p2, p0, Lgfc$1;->a:Z

    iput-object p3, p0, Lgfc$1;->b:Lgfd$a;

    iput-object p4, p0, Lgfc$1;->c:Lgfd;

    iput-object p5, p0, Lgfc$1;->d:Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 100
    iget-boolean v1, p0, Lgfc$1;->a:Z

    if-nez v1, :cond_0

    .line 106
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v1, p0, Lgfc$1;->e:Lgfc;

    .line 1027
    iget-object v1, v1, Lgfc;->b:Landroid/widget/CheckBox;

    .line 103
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 104
    .local v0, "selected":Z
    iget-object v1, p0, Lgfc$1;->b:Lgfd$a;

    .line 1056
    iput-boolean v0, v1, Lgfd$a;->b:Z

    .line 105
    iget-object v1, p0, Lgfc$1;->c:Lgfd;

    iget-object v2, p0, Lgfc$1;->d:Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    invoke-virtual {v1, v0, v2}, Lgfd;->a(ZLcom/alibaba/dingtalk/cspace/functions/members/Member;)V

    goto :goto_0
.end method
