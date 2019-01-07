.class public Lhtk$a;
.super Ljava/lang/Object;
.source "Options.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhtk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/Object;

.field c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lhtk$a;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 25
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "readOnly"    # Z

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lhtk$a;->a:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lhtk$a;->b:Ljava/lang/Object;

    .line 20
    iput-boolean p3, p0, Lhtk$a;->c:Z

    .line 21
    return-void
.end method
