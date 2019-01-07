.class public final Leyf$9;
.super Lcmi;
.source "VideoConfMgrAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leyf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lcom/alibaba/android/teleconf/sdk/idl/model/ReservedVideoConferenceOperationResultModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Leyo$d;


# direct methods
.method public constructor <init>(Leyo$d;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Leyf$9;->a:Leyo$d;

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
    .line 188
    iget-object v0, p0, Leyf$9;->a:Leyo$d;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Leyf$9;->a:Leyo$d;

    invoke-interface {v0, p1, p2, p3}, Leyo$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 178
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ReservedVideoConferenceOperationResultModel;

    .line 1181
    iget-object v0, p0, Leyf$9;->a:Leyo$d;

    if-eqz v0, :cond_0

    .line 1182
    iget-object v0, p0, Leyf$9;->a:Leyo$d;

    invoke-interface {v0, p1}, Leyo$d;->a(Ljava/lang/Object;)V

    .line 178
    :cond_0
    return-void
.end method
