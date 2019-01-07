.class public Lcom/alibaba/android/dingtalkim/models/RemindIconModel;
.super Ljava/lang/Object;
.source "RemindIconModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TYPE_BIRTHDAY:I = 0x1

.field private static final serialVersionUID:J = 0x1L

.field public static version:I


# instance fields
.field public end:J

.field public extParam:Ljava/lang/String;

.field public mediaId:Ljava/lang/String;

.field public start:J

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput v0, Lcom/alibaba/android/dingtalkim/models/RemindIconModel;->version:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
