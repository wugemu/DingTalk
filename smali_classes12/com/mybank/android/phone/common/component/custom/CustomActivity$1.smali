.class final Lcom/mybank/android/phone/common/component/custom/CustomActivity$1;
.super Ljava/lang/Object;
.source "CustomActivity.java"

# interfaces
.implements Llhg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mybank/android/phone/common/component/custom/CustomActivity;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Llgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Llhg",
        "<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mybank/android/phone/common/component/custom/CustomActivity;


# direct methods
.method constructor <init>(Lcom/mybank/android/phone/common/component/custom/CustomActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mybank/android/phone/common/component/custom/CustomActivity;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/mybank/android/phone/common/component/custom/CustomActivity$1;->a:Lcom/mybank/android/phone/common/component/custom/CustomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 176
    .line 1179
    iget-object v0, p0, Lcom/mybank/android/phone/common/component/custom/CustomActivity$1;->a:Lcom/mybank/android/phone/common/component/custom/CustomActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mybank/android/phone/common/component/custom/CustomActivity;->a(Z)V

    .line 176
    return-void
.end method
