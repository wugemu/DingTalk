.class public Lcom/alipay/mobile/security/bio/runtime/ModuleInfo;
.super Ljava/lang/Object;
.source "ModuleInfo.java"


# instance fields
.field final a:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final b:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final c:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Integer;)V
    .locals 1
    .param p1, "bundleName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "metaInfoClassName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "productIDs"    # [Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p2, p0, Lcom/alipay/mobile/security/bio/runtime/ModuleInfo;->b:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/runtime/ModuleInfo;->a:Ljava/lang/String;

    .line 42
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/runtime/ModuleInfo;->c:Ljava/util/List;

    .line 43
    return-void
.end method
