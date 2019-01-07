.class public Lcom/alibaba/lightapp/runtime/SecurityGuard$WUAException;
.super Ljava/lang/Exception;
.source "SecurityGuard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/SecurityGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WUAException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/SecurityGuard;


# direct methods
.method public constructor <init>(Lcom/alibaba/lightapp/runtime/SecurityGuard;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/SecurityGuard;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/SecurityGuard$WUAException;->this$0:Lcom/alibaba/lightapp/runtime/SecurityGuard;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method
