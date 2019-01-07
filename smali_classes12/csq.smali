.class public interface abstract Lcsq;
.super Ljava/lang/Object;
.source "WeekDayFormatter.java"


# static fields
.field public static final a:Lcsq;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8
    new-instance v0, Lcsj;

    .line 1022
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 8
    invoke-direct {v0, v1}, Lcsj;-><init>(Ljava/util/Calendar;)V

    sput-object v0, Lcsq;->a:Lcsq;

    return-void
.end method


# virtual methods
.method public abstract a(I)Ljava/lang/CharSequence;
.end method
