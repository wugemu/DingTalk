.class final Lhfc$2;
.super Ljava/lang/Object;
.source "AppInfoServiceImpl.java"

# interfaces
.implements Lhfi$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhfc;->b(Ljava/lang/String;Lhfb$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhfb$a;

.field final synthetic b:Lhfc;


# direct methods
.method constructor <init>(Lhfc;Lhfb$a;)V
    .locals 0
    .param p1, "this$0"    # Lhfc;

    .prologue
    .line 156
    iput-object p1, p0, Lhfc$2;->b:Lhfc;

    iput-object p2, p0, Lhfc$2;->a:Lhfb$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;)V
    .locals 1
    .param p1, "appInfoModel"    # Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;

    .prologue
    .line 159
    iget-object v0, p0, Lhfc$2;->a:Lhfb$a;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lhfc$2;->a:Lhfb$a;

    invoke-interface {v0, p1}, Lhfb$a;->onSuccess(Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;)V

    .line 162
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 166
    iget-object v0, p0, Lhfc$2;->a:Lhfb$a;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lhfc$2;->a:Lhfb$a;

    invoke-interface {v0, p1, p2, p3}, Lhfb$a;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 169
    :cond_0
    return-void
.end method
