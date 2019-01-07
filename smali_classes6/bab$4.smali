.class final Lbab$4;
.super Ljava/lang/Object;
.source "BaseCreateEventActivityPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbab;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lcom/alibaba/doraemon/performance/DDStringBuilder;

.field final synthetic c:Lbab;


# direct methods
.method constructor <init>(Lbab;Landroid/net/Uri;Lcom/alibaba/doraemon/performance/DDStringBuilder;)V
    .locals 0
    .param p1, "this$0"    # Lbab;

    .prologue
    .line 412
    iput-object p1, p0, Lbab$4;->c:Lbab;

    iput-object p2, p0, Lbab$4;->a:Landroid/net/Uri;

    iput-object p3, p0, Lbab$4;->b:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 415
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lbab$4;->a:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "ding_localstorage_conference_date_choose"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, "domainKey":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-object v2, p0, Lbab$4;->b:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    return-void
.end method
