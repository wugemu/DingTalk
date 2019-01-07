.class final Lcom/alibaba/android/user/service/BaseSearchNameCenter$1;
.super Ljava/lang/Object;
.source "BaseSearchNameCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/service/BaseSearchNameCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/service/BaseSearchNameCenter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/service/BaseSearchNameCenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/service/BaseSearchNameCenter;

    .prologue
    .line 184
    .local p0, "this":Lcom/alibaba/android/user/service/BaseSearchNameCenter$1;, "Lcom/alibaba/android/user/service/BaseSearchNameCenter$1;"
    iput-object p1, p0, Lcom/alibaba/android/user/service/BaseSearchNameCenter$1;->a:Lcom/alibaba/android/user/service/BaseSearchNameCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 187
    .local p0, "this":Lcom/alibaba/android/user/service/BaseSearchNameCenter$1;, "Lcom/alibaba/android/user/service/BaseSearchNameCenter$1;"
    iget-object v0, p0, Lcom/alibaba/android/user/service/BaseSearchNameCenter$1;->a:Lcom/alibaba/android/user/service/BaseSearchNameCenter;

    iget-object v0, v0, Lcom/alibaba/android/user/service/BaseSearchNameCenter;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/service/BaseSearchNameCenter$1;->a:Lcom/alibaba/android/user/service/BaseSearchNameCenter;

    iget-object v1, p0, Lcom/alibaba/android/user/service/BaseSearchNameCenter$1;->a:Lcom/alibaba/android/user/service/BaseSearchNameCenter;

    iget-object v1, v1, Lcom/alibaba/android/user/service/BaseSearchNameCenter;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/service/BaseSearchNameCenter;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
