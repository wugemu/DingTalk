.class final Lcom/alipay/mobile/security/faceauth/widget/Circle$1;
.super Ljava/lang/Object;
.source "Circle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/security/faceauth/widget/Circle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/faceauth/widget/Circle;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/faceauth/widget/Circle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/security/faceauth/widget/Circle;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle$1;->a:Lcom/alipay/mobile/security/faceauth/widget/Circle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle$1;->a:Lcom/alipay/mobile/security/faceauth/widget/Circle;

    invoke-static {v0}, Lcom/alipay/mobile/security/faceauth/widget/Circle;->a(Lcom/alipay/mobile/security/faceauth/widget/Circle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle$1;->a:Lcom/alipay/mobile/security/faceauth/widget/Circle;

    invoke-static {v0}, Lcom/alipay/mobile/security/faceauth/widget/Circle;->b(Lcom/alipay/mobile/security/faceauth/widget/Circle;)V

    .line 175
    :cond_0
    return-void
.end method
