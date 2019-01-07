.class public final Lapb;
.super Ljava/lang/Object;
.source "CalendarAlert.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapb$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:J

.field public c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:J

.field public f:I

.field public g:Z

.field private h:Ljava/lang/String;

.field private i:J


# direct methods
.method private constructor <init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIZ)V
    .locals 1
    .param p1, "alertType"    # I
    .param p2, "bizId"    # J
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "description"    # Ljava/lang/String;
    .param p6, "location"    # Ljava/lang/String;
    .param p7, "startTime"    # J
    .param p9, "alertTime"    # J
    .param p11, "remindMinutes"    # I
    .param p12, "allDay"    # Z

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lapb;->a:I

    .line 32
    iput-wide p2, p0, Lapb;->b:J

    .line 33
    iput-object p4, p0, Lapb;->c:Ljava/lang/String;

    .line 34
    iput-object p5, p0, Lapb;->d:Ljava/lang/String;

    .line 35
    iput-object p6, p0, Lapb;->h:Ljava/lang/String;

    .line 36
    iput-wide p7, p0, Lapb;->i:J

    .line 37
    iput-wide p9, p0, Lapb;->e:J

    .line 38
    iput p11, p0, Lapb;->f:I

    .line 39
    iput-boolean p12, p0, Lapb;->g:Z

    .line 40
    return-void
.end method

.method synthetic constructor <init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIZB)V
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # J
    .param p4, "x2"    # Ljava/lang/String;
    .param p5, "x3"    # Ljava/lang/String;
    .param p6, "x4"    # Ljava/lang/String;
    .param p7, "x5"    # J
    .param p9, "x6"    # J
    .param p11, "x7"    # I
    .param p12, "x8"    # Z

    .prologue
    .line 8
    invoke-direct/range {p0 .. p12}, Lapb;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIZ)V

    return-void
.end method
