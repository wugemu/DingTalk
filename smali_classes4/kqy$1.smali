.class final Lkqy$1;
.super Ljava/lang/Object;
.source "MailboxFieldImpl.java"

# interfaces
.implements Lkqx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkqy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkqx",
        "<",
        "Lkqy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/String;Ljava/lang/String;Lksy;Lkqa;)Lkqn;
    .locals 1

    .prologue
    .line 78
    .line 1081
    new-instance v0, Lkqy;

    invoke-direct {v0, p1, p2, p3, p4}, Lkqy;-><init>(Ljava/lang/String;Ljava/lang/String;Lksy;Lkqa;)V

    .line 78
    return-object v0
.end method
