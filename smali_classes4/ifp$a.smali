.class public final Lifp$a;
.super Ljava/lang/Object;
.source "RequestBeforeFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lifp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Lifp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Lifp;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lifp;-><init>(B)V

    sput-object v0, Lifp$a;->a:Lifp;

    return-void
.end method
