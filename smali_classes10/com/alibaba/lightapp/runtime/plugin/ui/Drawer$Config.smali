.class public Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;
.super Ljava/lang/Object;
.source "Drawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Config"
.end annotation


# static fields
.field public static final MASK_ALPHA:I = 0x8

.field public static final MASK_FROM:I = 0x20

.field public static final MASK_ID:I = 0x1

.field public static final MASK_PUSH_CONTENT:I = 0x10

.field public static final MASK_URL:I = 0x2

.field public static final MASK_WIDTH:I = 0x4


# instance fields
.field public alpha:F

.field public from:I

.field public id:Ljava/lang/String;

.field public pushContent:Z

.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer;

.field public updateMask:I

.field public url:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer;)V
    .locals 2
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer;

    .prologue
    const/4 v1, 0x0

    .line 255
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->this$0:Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput v1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->updateMask:I

    .line 268
    iput v1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->width:I

    .line 269
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->alpha:F

    .line 270
    iput-boolean v1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->pushContent:Z

    .line 271
    const v0, 0x800003

    iput v0, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->from:I

    return-void
.end method
