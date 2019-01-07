.class public final Leux;
.super Ljava/lang/Object;
.source "QuickMessage.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Leux;->b:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Leux;->a:Ljava/lang/String;

    .line 11
    return-void
.end method
