.class final Lfno$a;
.super Ljava/lang/Object;
.source "ExternalEditContractPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfno;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/alibaba/android/user/model/OrgExtFieldObject;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/user/model/OrgExtFieldObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "orgExtFieldObject"    # Lcom/alibaba/android/user/model/OrgExtFieldObject;
    .param p2, "fieldValue"    # Ljava/lang/String;
    .param p3, "emptyErrorToast"    # Ljava/lang/String;
    .param p4, "formatErrorToast"    # Ljava/lang/String;

    .prologue
    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    iput-object p1, p0, Lfno$a;->a:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    .line 394
    iput-object p2, p0, Lfno$a;->b:Ljava/lang/String;

    .line 395
    iput-object p3, p0, Lfno$a;->c:Ljava/lang/String;

    .line 396
    iput-object p4, p0, Lfno$a;->d:Ljava/lang/String;

    .line 397
    return-void
.end method
