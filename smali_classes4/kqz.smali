.class public final Lkqz;
.super Lkqp;
.source "MailboxListFieldImpl.java"

# interfaces
.implements Lkqm;


# static fields
.field static final c:Lkqx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkqx",
            "<",
            "Lkqz;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lkqz$1;

    invoke-direct {v0}, Lkqz$1;-><init>()V

    sput-object v0, Lkqz;->c:Lkqx;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lksy;Lkqa;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "raw"    # Lksy;
    .param p4, "monitor"    # Lkqa;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lkqp;-><init>(Ljava/lang/String;Ljava/lang/String;Lksy;Lkqa;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lkqz;->d:Z

    .line 39
    return-void
.end method
