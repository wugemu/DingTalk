.class public Lcom/uc/webview/export/internal/setup/UCMRepairInfo;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation


# static fields
.field public static final REPAIR_RESULT_FAIL:I = 0x2

.field public static final REPAIR_RESULT_INVALID:I = -0x1

.field public static final REPAIR_RESULT_NONE:I = 0x1

.field public static final REPAIR_RESULT_SUCC:I = 0x0

.field public static final VERIFY_POLICY_MD5:I = 0x1

.field public static final VERIFY_POLICY_SIZE:I


# instance fields
.field public repairDir:Ljava/lang/String;

.field public repairResult:I

.field public verifyPolicy:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/uc/webview/export/internal/setup/UCMRepairInfo;->repairResult:I

    .line 22
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/UCMRepairInfo;->repairDir:Ljava/lang/String;

    .line 25
    iput p1, p0, Lcom/uc/webview/export/internal/setup/UCMRepairInfo;->verifyPolicy:I

    .line 26
    return-void
.end method
