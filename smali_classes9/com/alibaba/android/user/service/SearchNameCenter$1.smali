.class final Lcom/alibaba/android/user/service/SearchNameCenter$1;
.super Ljava/lang/Object;
.source "SearchNameCenter.java"

# interfaces
.implements Lcom/alibaba/android/user/service/BaseSearchNameCenter$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/service/SearchNameCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/service/SearchNameCenter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/service/SearchNameCenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/service/SearchNameCenter;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alibaba/android/user/service/SearchNameCenter$1;->a:Lcom/alibaba/android/user/service/SearchNameCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 39
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchNameCenter$1;->a:Lcom/alibaba/android/user/service/SearchNameCenter;

    iget-boolean v0, v0, Lcom/alibaba/android/user/service/SearchNameCenter;->p:Z

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchNameCenter$1;->a:Lcom/alibaba/android/user/service/SearchNameCenter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alibaba/android/user/service/SearchNameCenter;->p:Z

    .line 47
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchNameCenter$1;->a:Lcom/alibaba/android/user/service/SearchNameCenter;

    .line 1023
    iput-object v1, v0, Lcom/alibaba/android/user/service/SearchNameCenter;->q:Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchNameCenter$1;->a:Lcom/alibaba/android/user/service/SearchNameCenter;

    .line 2023
    iput-object v1, v0, Lcom/alibaba/android/user/service/SearchNameCenter;->r:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchNameCenter$1;->a:Lcom/alibaba/android/user/service/SearchNameCenter;

    iput-object p1, v0, Lcom/alibaba/android/user/service/SearchNameCenter;->o:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchNameCenter$1;->a:Lcom/alibaba/android/user/service/SearchNameCenter;

    invoke-virtual {v0}, Lcom/alibaba/android/user/service/SearchNameCenter;->e()V

    goto :goto_0
.end method
