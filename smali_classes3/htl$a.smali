.class public final Lhtl$a;
.super Lhtk$a;
.source "Propertys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhtl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lhtk$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "readOnly"    # Z

    .prologue
    .line 21
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lhtk$a;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 22
    return-void
.end method
