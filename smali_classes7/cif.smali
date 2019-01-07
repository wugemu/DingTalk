.class public abstract Lcif;
.super Ljava/lang/Object;
.source "DingtalkChooseBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcif$a;
    }
.end annotation


# static fields
.field public static b:I


# instance fields
.field public c:I

.field public d:Lcif$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    sput v0, Lcif;->b:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcif;->c:I

    .line 29
    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(ILjava/lang/Object;)V
.end method

.method public final a(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "operationCode"    # I
    .param p2, "selectedList"    # Ljava/lang/Object;
    .param p3, "unCheckableList"    # Ljava/lang/Object;

    .prologue
    .line 39
    iget-object v0, p0, Lcif;->d:Lcif$a;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcif;->d:Lcif$a;

    invoke-interface {v0, p2, p3}, Lcif$a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    :cond_0
    return-void
.end method
