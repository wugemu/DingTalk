.class public final Lagy;
.super Ljava/lang/Object;
.source "MailSyncConfig.java"


# static fields
.field public static a:Lagy;


# instance fields
.field public b:I

.field public c:I

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lagy;

    invoke-direct {v0}, Lagy;-><init>()V

    sput-object v0, Lagy;->a:Lagy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/16 v0, 0x14

    iput v0, p0, Lagy;->b:I

    .line 17
    const/4 v0, 0x2

    iput v0, p0, Lagy;->c:I

    .line 18
    const/16 v0, 0x32

    iput v0, p0, Lagy;->d:I

    .line 22
    return-void
.end method
