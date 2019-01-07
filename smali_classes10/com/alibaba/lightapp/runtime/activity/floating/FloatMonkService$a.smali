.class public final Lcom/alibaba/lightapp/runtime/activity/floating/FloatMonkService$a;
.super Landroid/os/Binder;
.source "FloatMonkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/activity/floating/FloatMonkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/alibaba/lightapp/runtime/activity/floating/FloatMonkService;


# direct methods
.method public constructor <init>(Lcom/alibaba/lightapp/runtime/activity/floating/FloatMonkService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/activity/floating/FloatMonkService;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/floating/FloatMonkService$a;->a:Lcom/alibaba/lightapp/runtime/activity/floating/FloatMonkService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method
