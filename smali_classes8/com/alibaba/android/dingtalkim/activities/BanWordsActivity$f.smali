.class abstract Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$f;
.super Ljava/lang/Object;
.source "BanWordsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "f"
.end annotation


# instance fields
.field protected c:Landroid/view/View;

.field final synthetic d:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;


# direct methods
.method protected constructor <init>(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;)V
    .locals 2

    .prologue
    .line 692
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$f;->d:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 693
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$f;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$f;->c:Landroid/view/View;

    .line 694
    return-void
.end method


# virtual methods
.method abstract a()I
.end method

.method abstract a(Ljava/lang/Object;)V
.end method

.method public final b()Landroid/view/View;
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$f;->c:Landroid/view/View;

    return-object v0
.end method
