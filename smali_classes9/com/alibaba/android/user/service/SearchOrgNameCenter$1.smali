.class final Lcom/alibaba/android/user/service/SearchOrgNameCenter$1;
.super Ljava/lang/Object;
.source "SearchOrgNameCenter.java"

# interfaces
.implements Lcom/alibaba/android/user/service/SearchOrgNameCenter$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/service/SearchOrgNameCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/service/SearchOrgNameCenter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/service/SearchOrgNameCenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/service/SearchOrgNameCenter;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$1;->a:Lcom/alibaba/android/user/service/SearchOrgNameCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4
    .param p1, "content"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 63
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$1;->a:Lcom/alibaba/android/user/service/SearchOrgNameCenter;

    .line 1031
    iget-boolean v0, v0, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->i:Z

    .line 63
    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$1;->a:Lcom/alibaba/android/user/service/SearchOrgNameCenter;

    .line 2031
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->i:Z

    .line 73
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$1;->a:Lcom/alibaba/android/user/service/SearchOrgNameCenter;

    .line 3031
    iput-object v1, v0, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->e:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$1;->a:Lcom/alibaba/android/user/service/SearchOrgNameCenter;

    const-wide/16 v2, 0x0

    .line 4031
    iput-wide v2, v0, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->f:J

    .line 70
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$1;->a:Lcom/alibaba/android/user/service/SearchOrgNameCenter;

    .line 5031
    iput-object v1, v0, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->g:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$1;->a:Lcom/alibaba/android/user/service/SearchOrgNameCenter;

    .line 6031
    iput-object p1, v0, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->h:Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$1;->a:Lcom/alibaba/android/user/service/SearchOrgNameCenter;

    invoke-static {v0}, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->a(Lcom/alibaba/android/user/service/SearchOrgNameCenter;)V

    goto :goto_0
.end method
