.class public Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;
.super Ljava/lang/Object;
.source "NavModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NavAnimInfo"
.end annotation


# instance fields
.field public res:[I

.field public transitFrom:Landroid/graphics/RectF;

.field public transitTo:Landroid/graphics/RectF;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
