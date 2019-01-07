.class public Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsTaskInfo;
.super Ljava/lang/Object;
.source "Ding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JsArgsTaskInfo"
.end annotation


# instance fields
.field public ccUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public deadlineTime:Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$DateModel;

.field public taskRemind:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 637
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
