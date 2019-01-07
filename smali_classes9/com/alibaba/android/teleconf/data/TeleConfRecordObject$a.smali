.class public final Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$a;
.super Ljava/lang/Object;
.source "TeleConfRecordObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$a;->c:I

    iput v0, p0, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$a;->b:I

    iput v0, p0, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$a;->a:I

    .line 59
    return-void
.end method
