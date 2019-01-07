.class public Lcom/alibaba/sdk/android/httpdns/f;
.super Ljava/lang/Throwable;


# instance fields
.field private b:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/alibaba/sdk/android/httpdns/f;->b:I

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/alibaba/sdk/android/httpdns/f;->b:I

    return v0
.end method
