.class public final Leyb$5;
.super Lcmi;
.source "CloudContactImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leyb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Leyo$d;

.field final synthetic b:Leyb;


# direct methods
.method public constructor <init>(Leyb;Leyo$d;)V
    .locals 0
    .param p1, "this$0"    # Leyb;

    .prologue
    .line 191
    iput-object p1, p0, Leyb$5;->b:Leyb;

    iput-object p2, p0, Leyb$5;->a:Leyo$d;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 201
    iget-object v0, p0, Leyb$5;->a:Leyo$d;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Leyb$5;->a:Leyo$d;

    invoke-interface {v0, p1, p2, p3}, Leyo$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 204
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 191
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactModel;

    .line 1194
    iget-object v0, p0, Leyb$5;->a:Leyo$d;

    if-eqz v0, :cond_0

    .line 1195
    iget-object v0, p0, Leyb$5;->a:Leyo$d;

    invoke-interface {v0, p1}, Leyo$d;->a(Ljava/lang/Object;)V

    .line 191
    :cond_0
    return-void
.end method
