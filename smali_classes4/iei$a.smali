.class public abstract Liei$a;
.super Ljava/lang/Object;
.source "AudioFocusSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liei;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liei$a$a;
    }
.end annotation


# instance fields
.field private a:Liei$a$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method static synthetic a(Liei$a;)Liei$a$a;
    .locals 2
    .param p0, "x0"    # Liei$a;

    .prologue
    .line 64
    .line 1079
    iget-object v0, p0, Liei$a;->a:Liei$a$a;

    if-nez v0, :cond_0

    .line 1080
    new-instance v0, Liei$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Liei$a$a;-><init>(Liei$a;B)V

    iput-object v0, p0, Liei$a;->a:Liei$a$a;

    .line 1082
    :cond_0
    iget-object v0, p0, Liei$a;->a:Liei$a$a;

    .line 64
    return-object v0
.end method


# virtual methods
.method public abstract a(I)V
.end method
