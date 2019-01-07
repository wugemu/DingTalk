.class final Lgfc$3;
.super Ljava/lang/Object;
.source "MemberViewHolder.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgfc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/dingtalk/cspace/functions/members/Member;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgfd$a;

.field final synthetic b:Lgfd;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lgfc;


# direct methods
.method constructor <init>(Lgfc;Lgfd$a;Lgfd;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lgfc;

    .prologue
    .line 152
    iput-object p1, p0, Lgfc$3;->d:Lgfc;

    iput-object p2, p0, Lgfc$3;->a:Lgfd$a;

    iput-object p3, p0, Lgfc$3;->b:Lgfd;

    iput-object p4, p0, Lgfc$3;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 152
    check-cast p1, Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    .line 1155
    iget-object v0, p0, Lgfc$3;->d:Lgfc;

    .line 2027
    iget-object v0, v0, Lgfc;->d:Landroid/widget/TextView;

    .line 1155
    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 1156
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2135
    iget-object v1, p1, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->b:Ljava/lang/String;

    .line 1156
    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1157
    iget-object v0, p0, Lgfc$3;->a:Lgfd$a;

    .line 3048
    iput-object p1, v0, Lgfd$a;->a:Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    .line 1158
    iget-object v0, p0, Lgfc$3;->d:Lgfc;

    iget-object v1, p0, Lgfc$3;->b:Lgfd;

    .line 4027
    invoke-virtual {v0, v1}, Lgfc;->a(Lgfd;)V

    .line 1159
    iget-object v0, p0, Lgfc$3;->d:Lgfc;

    iget-object v1, p0, Lgfc$3;->c:Landroid/content/Context;

    iget-object v2, p0, Lgfc$3;->a:Lgfd$a;

    iget-object v3, p0, Lgfc$3;->b:Lgfd;

    .line 5027
    invoke-virtual {v0, v1, v2, v3}, Lgfc;->a(Landroid/content/Context;Lgfd$a;Lgfd;)V

    .line 152
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorInfo"    # Ljava/lang/String;

    .prologue
    .line 169
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 165
    return-void
.end method
