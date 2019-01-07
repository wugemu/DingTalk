.class final Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$11;
.super Ljava/lang/Object;
.source "BanWordsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[J

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;[J)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    .prologue
    .line 464
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$11;->b:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$11;->a:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 467
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$11;->b:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$11;->a:[J

    invoke-static {}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;->values()[Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;

    move-result-object v2

    aget-object v2, v2, p2

    iget-wide v2, v2, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;->time:J

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->a(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;[JJ)V

    .line 468
    return-void
.end method
