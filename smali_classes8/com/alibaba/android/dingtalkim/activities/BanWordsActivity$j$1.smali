.class final Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$j$1;
.super Ljava/lang/Object;
.source "BanWordsActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$j;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lckl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$j;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$j;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$j;

    .prologue
    .line 742
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$j$1;->a:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 752
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 742
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 742
    check-cast p1, Lckl;

    .line 1745
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$j$1;->a:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$j;

    .line 2705
    iget-wide v0, v0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$j;->b:J

    .line 3063
    iget-wide v2, p1, Lckl;->c:J

    .line 1745
    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1746
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$j$1;->a:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$j;

    .line 3705
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$j;->a:Landroid/widget/TextView;

    .line 4039
    iget-object v1, p1, Lckl;->d:Ljava/lang/String;

    .line 1746
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 742
    :cond_0
    return-void
.end method
