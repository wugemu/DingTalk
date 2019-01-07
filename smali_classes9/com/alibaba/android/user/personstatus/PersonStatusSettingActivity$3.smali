.class final Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity$3;
.super Ljava/lang/Object;
.source "PersonStatusSettingActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Lccv;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity$3;->a:Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 309
    check-cast p1, Ljava/util/List;

    .line 1312
    iget-object v0, p0, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity$3;->a:Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;->b(Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;Ljava/util/List;)V

    .line 309
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 321
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 317
    return-void
.end method
