.class public final Leak;
.super Ljava/lang/Object;
.source "MicroAppObject.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "intentFlag"    # I

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Leak;->a:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Leak;->b:Ljava/lang/String;

    .line 15
    iput p3, p0, Leak;->c:I

    .line 16
    return-void
.end method
