.class final Lbnv$a$1;
.super Ljava/lang/Object;
.source "BaseViewHolder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbnv$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbnv$a;


# direct methods
.method constructor <init>(Lbnv$a;)V
    .locals 0
    .param p1, "this$1"    # Lbnv$a;

    .prologue
    .line 1495
    iput-object p1, p0, Lbnv$a$1;->a:Lbnv$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1499
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    iget-object v0, p0, Lbnv$a$1;->a:Lbnv$a;

    iget-object v0, v0, Lbnv$a;->b:Lbnv;

    invoke-static {v0}, Lbnv;->b(Lbnv;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "detail_delete_comments"

    :goto_0
    invoke-interface {v1, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1501
    iget-object v0, p0, Lbnv$a$1;->a:Lbnv$a;

    iget-object v1, p0, Lbnv$a$1;->a:Lbnv$a;

    iget-wide v2, v1, Lbnv$a;->a:J

    iget-object v1, p0, Lbnv$a$1;->a:Lbnv$a;

    iget-object v1, v1, Lbnv$a;->b:Lbnv;

    invoke-static {v1}, Lbnv;->c(Lbnv;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    move-result-object v1

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lbnv$a;->a(JJ)V

    .line 1502
    return-void

    .line 1499
    :cond_0
    const-string/jumbo v0, "feed_delete_comments"

    goto :goto_0
.end method
