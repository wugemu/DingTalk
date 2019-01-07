.class public Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;
.super Ljava/lang/Object;
.source "BaseConnectionSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/j256/ormlite/support/BaseConnectionSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NestedConnection"
.end annotation


# instance fields
.field public final a:Lcom/j256/ormlite/support/DatabaseConnection;

.field public b:I


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/support/DatabaseConnection;)V
    .locals 1
    .param p1, "connection"    # Lcom/j256/ormlite/support/DatabaseConnection;

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;->a:Lcom/j256/ormlite/support/DatabaseConnection;

    .line 129
    const/4 v0, 0x1

    iput v0, p0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;->b:I

    .line 130
    return-void
.end method
