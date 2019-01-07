.class public final Lciu$a;
.super Ljava/lang/Object;
.source "AudioFocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lciu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field b:I

.field c:I

.field d:Lciu$b;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILciu$b;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "priority"    # I
    .param p4, "listener"    # Lciu$b;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lciu$a;->a:Ljava/lang/String;

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lciu$a;->b:I

    .line 43
    iput p3, p0, Lciu$a;->c:I

    .line 44
    iput-object p4, p0, Lciu$a;->d:Lciu$b;

    .line 45
    return-void
.end method
