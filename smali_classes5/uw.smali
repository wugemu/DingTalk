.class public abstract Luw;
.super Ljava/lang/Object;
.source "Contacts.java"


# static fields
.field private static c:Luw;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Luw;->c:Luw;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Luw;->a:Landroid/content/Context;

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Luw;->b:Landroid/content/ContentResolver;

    .line 128
    return-void
.end method
