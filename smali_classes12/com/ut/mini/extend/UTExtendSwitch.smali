.class public Lcom/ut/mini/extend/UTExtendSwitch;
.super Ljava/lang/Object;
.source "UTExtendSwitch.java"


# static fields
.field public static volatile bJTrackExtend:Z

.field public static volatile bTlogExtend:Z

.field public static volatile bWindvaneExtend:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 9
    sput-boolean v0, Lcom/ut/mini/extend/UTExtendSwitch;->bWindvaneExtend:Z

    .line 10
    sput-boolean v0, Lcom/ut/mini/extend/UTExtendSwitch;->bTlogExtend:Z

    .line 11
    sput-boolean v0, Lcom/ut/mini/extend/UTExtendSwitch;->bJTrackExtend:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
