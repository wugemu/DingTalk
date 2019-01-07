.class final Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$g$2;
.super Ljava/lang/Object;
.source "BanWordsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$g;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/UserBanObject;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$g;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$g;Lcom/alibaba/wukong/im/UserBanObject;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$g;

    .prologue
    .line 847
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$g$2;->b:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$g;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$g$2;->a:Lcom/alibaba/wukong/im/UserBanObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 850
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$g$2;->b:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$g;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$g;->e:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$g$2;->a:Lcom/alibaba/wukong/im/UserBanObject;

    iget-wide v4, v3, Lcom/alibaba/wukong/im/UserBanObject;->openId:J

    aput-wide v4, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->d(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;[J)V

    .line 851
    return-void
.end method
