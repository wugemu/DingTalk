.class final Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$1$1;
.super Ljava/lang/Object;
.source "BanWordsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$1;->a(Lcjo$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$1;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 130
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->a(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;Z)V

    .line 131
    return-void
.end method
