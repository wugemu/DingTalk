.class final Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$c;
.super Ljava/lang/Object;
.source "ChooseDistrictCodeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$c;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    .prologue
    .line 372
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$c;-><init>(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 375
    iget-object v0, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$c;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->l(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 376
    return-void
.end method
