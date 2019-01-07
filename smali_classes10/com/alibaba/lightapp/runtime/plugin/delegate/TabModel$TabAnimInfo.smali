.class public Lcom/alibaba/lightapp/runtime/plugin/delegate/TabModel$TabAnimInfo;
.super Ljava/lang/Object;
.source "TabModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/plugin/delegate/TabModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabAnimInfo"
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
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
