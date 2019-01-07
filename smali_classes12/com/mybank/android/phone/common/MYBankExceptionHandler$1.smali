.class public final Lcom/mybank/android/phone/common/MYBankExceptionHandler$1;
.super Ljava/lang/Object;
.source "MYBankExceptionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mybank/android/phone/common/MYBankExceptionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mybank/android/phone/common/MYBankExceptionHandler;


# direct methods
.method public constructor <init>(Lcom/mybank/android/phone/common/MYBankExceptionHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mybank/android/phone/common/MYBankExceptionHandler;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/mybank/android/phone/common/MYBankExceptionHandler$1;->a:Lcom/mybank/android/phone/common/MYBankExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mybank/android/phone/common/MYBankExceptionHandler;->a(Z)Z

    .line 37
    return-void
.end method
