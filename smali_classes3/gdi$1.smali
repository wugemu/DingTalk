.class final Lgdi$1;
.super Ljava/lang/Object;
.source "AclMemberViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgdi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lgnu;

.field final synthetic d:Lgdi;


# direct methods
.method constructor <init>(Lgdi;ILandroid/content/Context;Lgnu;)V
    .locals 0
    .param p1, "this$0"    # Lgdi;

    .prologue
    .line 111
    iput-object p1, p0, Lgdi$1;->d:Lgdi;

    iput p2, p0, Lgdi$1;->a:I

    iput-object p3, p0, Lgdi$1;->b:Landroid/content/Context;

    iput-object p4, p0, Lgdi$1;->c:Lgnu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 114
    iget v0, p0, Lgdi$1;->a:I

    if-nez v0, :cond_1

    .line 115
    iget-object v0, p0, Lgdi$1;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgdi$1;->c:Lgnu;

    .line 1227
    iget v0, v0, Lgnu;->e:I

    .line 115
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 116
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-object v0, p0, Lgdi$1;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lgdi$1;->c:Lgnu;

    .line 2195
    iget-object v2, v2, Lgnu;->a:Ljava/lang/String;

    .line 3109
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 116
    invoke-virtual {v1, v0, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;J)V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget v0, p0, Lgdi$1;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 119
    iget-object v0, p0, Lgdi$1;->d:Lgdi;

    iget-object v1, p0, Lgdi$1;->c:Lgnu;

    iget-object v2, p0, Lgdi$1;->b:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lgdi;->a(Lgdi;Lgnu;Landroid/content/Context;)V

    goto :goto_0
.end method
